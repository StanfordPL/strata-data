  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                  
.target:                            #        0     0      OPC=<label>             
  vmovshdup %xmm2, %xmm1            #  1     0     4      OPC=vmovshdup_xmm_xmm   
  callq .move_128_064_xmm3_r10_r11  #  2     0x4   5      OPC=callq_label         
  vmovss %xmm3, %xmm2, %xmm14       #  3     0x9   4      OPC=vmovss_xmm_xmm_xmm  
  callq .move_064_128_r10_r11_xmm1  #  4     0xd   5      OPC=callq_label         
  movsd %xmm14, %xmm1               #  5     0x12  5      OPC=movsd_xmm_xmm       
  retq                              #  6     0x17  1      OPC=retq                
                                                                                  
.size target, .-target
