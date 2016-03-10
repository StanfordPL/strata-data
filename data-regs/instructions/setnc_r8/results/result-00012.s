  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  setb %r14b               #  1     0    4      OPC=setb_r8       
  xorl %ebx, %ebx          #  2     0x4  2      OPC=xorl_r32_r32  
  xorb %bl, %r14b          #  3     0x6  3      OPC=xorb_r8_r8    
  callq .read_zf_into_rbx  #  4     0x9  5      OPC=callq_label   
  retq                     #  5     0xe  1      OPC=retq          
                                                                  
.size target, .-target
