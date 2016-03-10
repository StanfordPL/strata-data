  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                       
.target:                                    #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm1, %xmm1, %xmm13          #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vcvtps2dq %ymm13, %ymm9                   #  2     0x4   5      OPC=vcvtps2dq_ymm_ymm        
  movq %xmm9, %r12                          #  3     0x9   5      OPC=movq_r64_xmm             
  vmovq %r12, %xmm2                         #  4     0xe   5      OPC=vmovq_xmm_r64            
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  5     0x13  5      OPC=callq_label              
  movslq %eax, %rbx                         #  6     0x18  3      OPC=movslq_r64_r32           
  xorl %r8d, %ebx                           #  7     0x1b  3      OPC=xorl_r32_r32             
  retq                                      #  8     0x1e  1      OPC=retq                     
                                                                                               
.size target, .-target
