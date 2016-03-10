  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vbroadcastss %xmm2, %xmm13                      #  1     0     5      OPC=vbroadcastss_xmm_xmm    
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x5   5      OPC=callq_label             
  vmovss %xmm10, %xmm9, %xmm6                     #  3     0xa   5      OPC=vmovss_xmm_xmm_xmm      
  vpunpckhdq %xmm13, %xmm6, %xmm2                 #  4     0xf   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsd %xmm2, %xmm1                              #  5     0x14  4      OPC=movsd_xmm_xmm           
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
