  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  vmovups %xmm1, %xmm15              #  1     0     4      OPC=vmovups_xmm_xmm  
  vmovq %xmm15, %rbx                 #  2     0x4   5      OPC=vmovq_r64_xmm    
  callq .move_064_032_rbx_r12d_r13d  #  3     0x9   5      OPC=callq_label      
  movzwq %r13w, %rbx                 #  4     0xe   4      OPC=movzwq_r64_r16   
  andw %r13w, %bx                    #  5     0x12  4      OPC=andw_r16_r16     
  retq                               #  6     0x16  1      OPC=retq             
                                                                                
.size target, .-target
