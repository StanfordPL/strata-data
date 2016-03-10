  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmaxps %xmm1, %xmm2, %xmm3                      #  1     0     4      OPC=vmaxps_xmm_xmm_xmm      
  vsqrtsd %xmm3, %xmm1, %xmm13                    #  2     0x4   4      OPC=vsqrtsd_xmm_xmm_xmm     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label             
  vpunpckhdq %xmm8, %xmm13, %xmm10                #  4     0xd   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x12  5      OPC=callq_label             
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
