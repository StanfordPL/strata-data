  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  vmovdqa %xmm2, %xmm1                #  1     0     4      OPC=vmovdqa_xmm_xmm  
  movswq %bx, %r9                     #  2     0x4   4      OPC=movswq_r64_r16   
  orb %bl, %r9b                       #  3     0x8   3      OPC=orb_r8_r8        
  callq .move_r9b_to_byte_11_of_ymm1  #  4     0xb   5      OPC=callq_label      
  retq                                #  5     0x10  1      OPC=retq             
                                                                                 
.size target, .-target
