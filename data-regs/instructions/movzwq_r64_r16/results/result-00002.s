  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  movswq %cx, %r9          #  1     0    4      OPC=movswq_r64_r16  
  xorl %ecx, %ecx          #  2     0x4  2      OPC=xorl_r32_r32    
  callq .read_zf_into_rbx  #  3     0x6  5      OPC=callq_label     
  xchgw %bx, %r9w          #  4     0xb  4      OPC=xchgw_r16_r16   
  retq                     #  5     0xf  1      OPC=retq            
                                                                    
.size target, .-target
