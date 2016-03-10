  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                    
.target:                                          #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_eax_edx_r8d_r9d        #  1     0     5      OPC=callq_label           
  movd %r8d, %xmm10                               #  2     0x5   5      OPC=movd_xmm_r32          
  vbroadcastss %xmm10, %xmm9                      #  3     0xa   5      OPC=vbroadcastss_xmm_xmm  
  movq %xmm9, %xmm11                              #  4     0xf   5      OPC=movq_xmm_xmm          
  vmovd %r9d, %xmm8                               #  5     0x14  5      OPC=vmovd_xmm_r32         
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  6     0x19  5      OPC=callq_label           
  retq                                            #  7     0x1e  1      OPC=retq                  
                                                                                                  
.size target, .-target
