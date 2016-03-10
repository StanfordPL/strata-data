  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  divss %xmm3, %xmm2              #  1     0     4      OPC=divss_xmm_xmm       
  callq .move_128_064_xmm2_r8_r9  #  2     0x4   5      OPC=callq_label         
  vmovd %r8d, %xmm1               #  3     0x9   5      OPC=vmovd_xmm_r32       
  vaddps %xmm1, %xmm1, %xmm1      #  4     0xe   4      OPC=vaddps_xmm_xmm_xmm  
  callq .move_064_128_r8_r9_xmm1  #  5     0x12  5      OPC=callq_label         
  retq                            #  6     0x17  1      OPC=retq                
                                                                                
.size target, .-target
