  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label   
  xorq %rax, %rax          #  2     0x5  3      OPC=xorq_r64_r64  
  adcb %cl, %ah            #  3     0x8  2      OPC=adcb_rh_r8    
  setle %ah                #  4     0xa  3      OPC=setle_rh      
  retq                     #  5     0xd  1      OPC=retq          
                                                                  
.size target, .-target
