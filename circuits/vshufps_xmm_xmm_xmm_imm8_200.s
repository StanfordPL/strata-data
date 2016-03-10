  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode             
.target:                                          #        0     0      OPC=<label>        
  callq .move_128_064_xmm2_r12_r13                #  1     0     5      OPC=callq_label    
  callq .move_128_032_xmm3_eax_edx_r8d_r9d        #  2     0x5   5      OPC=callq_label    
  vzeroall                                        #  3     0xa   3      OPC=vzeroall       
  vmovd %eax, %xmm10                              #  4     0xd   4      OPC=vmovd_xmm_r32  
  movd %r12d, %xmm8                               #  5     0x11  5      OPC=movd_xmm_r32   
  vmovd %r9d, %xmm11                              #  6     0x16  5      OPC=vmovd_xmm_r32  
  movd %r13d, %xmm9                               #  7     0x1b  5      OPC=movd_xmm_r32   
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x20  5      OPC=callq_label    
  retq                                            #  9     0x25  1      OPC=retq           
                                                                                           
.size target, .-target
