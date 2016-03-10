  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  pmovzxwq %xmm1, %xmm2            #  1     0     5      OPC=pmovzxwq_xmm_xmm         
  vpunpckhqdq %xmm1, %xmm2, %xmm6  #  2     0x5   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movd %xmm6, %r12d                #  3     0x9   5      OPC=movd_r32_xmm             
  movzwq %r12w, %rbx               #  4     0xe   4      OPC=movzwq_r64_r16           
  retq                             #  5     0x12  1      OPC=retq                     
                                                                                      
.size target, .-target
