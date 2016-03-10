  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label         
  movq %xmm3, %r15                #  2     0x5   5      OPC=movq_r64_xmm        
  callq .move_064_128_r8_r9_xmm2  #  3     0xa   5      OPC=callq_label         
  vmovd %r15d, %xmm12             #  4     0xf   5      OPC=vmovd_xmm_r32       
  vmovss %xmm12, %xmm2, %xmm1     #  5     0x14  5      OPC=vmovss_xmm_xmm_xmm  
  retq                            #  6     0x19  1      OPC=retq                
                                                                                
.size target, .-target
