  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode             
.target:                                          #        0     0      OPC=<label>        
  callq .move_128_032_xmm2_eax_edx_r8d_r9d        #  1     0     5      OPC=callq_label    
  vzeroall                                        #  2     0x5   3      OPC=vzeroall       
  movd %r8d, %xmm10                               #  3     0x8   5      OPC=movd_xmm_r32   
  movd %ebx, %xmm9                                #  4     0xd   5      OPC=movd_xmm_r32   
  vmovd %r9d, %xmm11                              #  5     0x12  5      OPC=vmovd_xmm_r32  
  vmovd %eax, %xmm8                               #  6     0x17  4      OPC=vmovd_xmm_r32  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label    
  retq                                            #  8     0x20  1      OPC=retq           
                                                                                           
.size target, .-target
