  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                          
.target:                                          #        0     0      OPC=<label>                     
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label                 
  vfmsubadd231ps %xmm2, %xmm1, %xmm11             #  2     0x5   5      OPC=vfmsubadd231ps_xmm_xmm_xmm  
  vpunpckhdq %xmm8, %xmm11, %xmm11                #  3     0xa   5      OPC=vpunpckhdq_xmm_xmm_xmm      
  vfmadd231ps %xmm8, %xmm8, %xmm11                #  4     0xf   5      OPC=vfmadd231ps_xmm_xmm_xmm     
  punpckhdq %xmm11, %xmm10                        #  5     0x14  5      OPC=punpckhdq_xmm_xmm           
  punpckhqdq %xmm8, %xmm11                        #  6     0x19  5      OPC=punpckhqdq_xmm_xmm          
  callq .move_64_128_xmm10_xmm11_xmm1             #  7     0x1e  5      OPC=callq_label                 
  retq                                            #  8     0x23  1      OPC=retq                        
                                                                                                        
.size target, .-target
