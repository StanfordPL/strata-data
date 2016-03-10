  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vmovss %xmm2, %xmm3, %xmm3       #  1     0     4      OPC=vmovss_xmm_xmm_xmm     
  vmovsd %xmm3, %xmm2, %xmm3       #  2     0x4   4      OPC=vmovsd_xmm_xmm_xmm     
  callq .move_128_064_xmm3_r8_r9   #  3     0x8   5      OPC=callq_label            
  vzeroall                         #  4     0xd   3      OPC=vzeroall               
  callq .move_064_128_r8_r9_xmm3   #  5     0x10  5      OPC=callq_label            
  vunpckhpd %xmm13, %xmm14, %xmm7  #  6     0x15  5      OPC=vunpckhpd_xmm_xmm_xmm  
  vxorpd %xmm7, %xmm3, %xmm1       #  7     0x1a  4      OPC=vxorpd_xmm_xmm_xmm     
  retq                             #  8     0x1e  1      OPC=retq                   
                                                                                    
.size target, .-target
