  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                          
.target:                                          #        0     0      OPC=<label>                     
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label                 
  vfmaddsub213pd %xmm8, %xmm11, %xmm11            #  2     0x5   5      OPC=vfmaddsub213pd_xmm_xmm_xmm  
  vunpckhpd %xmm11, %xmm1, %xmm10                 #  3     0xa   5      OPC=vunpckhpd_xmm_xmm_xmm       
  movq %xmm10, %rbx                               #  4     0xf   5      OPC=movq_r64_xmm                
  retq                                            #  5     0x14  1      OPC=retq                        
                                                                                                        
.size target, .-target
