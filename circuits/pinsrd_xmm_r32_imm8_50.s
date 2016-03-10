  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vmovd %ebx, %xmm7                    #  1     0     4      OPC=vmovd_xmm_r32       
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x4   5      OPC=callq_label         
  vmovss %xmm7, %xmm13, %xmm8          #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm  
  movlhps %xmm8, %xmm1                 #  4     0xd   4      OPC=movlhps_xmm_xmm     
  retq                                 #  5     0x11  1      OPC=retq                
                                                                                     
.size target, .-target
