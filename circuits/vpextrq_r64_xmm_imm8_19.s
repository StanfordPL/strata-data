  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  movdqa %xmm1, %xmm6          #  1     0     4      OPC=movdqa_xmm_xmm      
  vmulss %xmm6, %xmm1, %xmm9   #  2     0x4   4      OPC=vmulss_xmm_xmm_xmm  
  movapd %xmm6, %xmm3          #  3     0x8   4      OPC=movapd_xmm_xmm      
  vandps %xmm9, %xmm9, %xmm11  #  4     0xc   5      OPC=vandps_xmm_xmm_xmm  
  punpckhqdq %xmm11, %xmm3     #  5     0x11  5      OPC=punpckhqdq_xmm_xmm  
  vmovq %xmm3, %rbx            #  6     0x16  5      OPC=vmovq_r64_xmm       
  retq                         #  7     0x1b  1      OPC=retq                
                                                                             
.size target, .-target
