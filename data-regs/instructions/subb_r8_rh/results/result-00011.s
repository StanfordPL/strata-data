  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  testb %bl, %ah           #  1     0    2      OPC=testb_rh_r8   
  callq .read_cf_into_rcx  #  2     0x2  5      OPC=callq_label   
  shlq $0x1, %rcx          #  3     0x7  3      OPC=shlq_r64_one  
  sbbb %ah, %bl            #  4     0xa  2      OPC=sbbb_r8_rh    
  retq                     #  5     0xc  1      OPC=retq          
                                                                  
.size target, .-target
