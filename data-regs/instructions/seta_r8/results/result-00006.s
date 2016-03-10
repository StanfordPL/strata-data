  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label   
  rcll $0x1, %ebx          #  2     0x5  2      OPC=rcll_r32_one  
  callq .set_szp_for_bx    #  3     0x7  5      OPC=callq_label   
  setle %bl                #  4     0xc  3      OPC=setle_r8      
  retq                     #  5     0xf  1      OPC=retq          
                                                                  
.size target, .-target
