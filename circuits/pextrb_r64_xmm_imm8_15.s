  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode                
.target:                              #        0    0      OPC=<label>           
  unpckhps %xmm1, %xmm1               #  1     0    3      OPC=unpckhps_xmm_xmm  
  callq .move_byte_11_of_ymm1_to_r8b  #  2     0x3  5      OPC=callq_label       
  xorl %ebx, %ebx                     #  3     0x8  2      OPC=xorl_r32_r32      
  movb %r8b, %bl                      #  4     0xa  3      OPC=movb_r8_r8        
  retq                                #  5     0xd  1      OPC=retq              
                                                                                 
.size target, .-target
