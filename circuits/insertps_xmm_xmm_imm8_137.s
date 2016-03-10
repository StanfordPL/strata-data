  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  punpcklqdq %xmm10, %xmm1                        #  2     0x5   5      OPC=punpcklqdq_xmm_xmm  
  vmovaps %xmm8, %xmm3                            #  3     0xa   5      OPC=vmovaps_xmm_xmm     
  callq .move_128_032_xmm3_eax_edx_r8d_r9d        #  4     0xf   5      OPC=callq_label         
  cvtsi2ssl %r8d, %xmm1                           #  5     0x14  5      OPC=cvtsi2ssl_xmm_r32   
  retq                                            #  6     0x19  1      OPC=retq                
                                                                                                
.size target, .-target
