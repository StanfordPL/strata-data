  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vpmovzxwq %xmm11, %ymm15                        #  2     0x5   5      OPC=vpmovzxwq_ymm_xmm  
  vmovupd %ymm15, %ymm3                           #  3     0xa   5      OPC=vmovupd_ymm_ymm    
  callq .move_128_032_xmm3_eax_edx_r8d_r9d        #  4     0xf   5      OPC=callq_label        
  callq .move_016_032_r8w_r9w_ebx                 #  5     0x14  5      OPC=callq_label        
  xchgl %ebx, %r8d                                #  6     0x19  3      OPC=xchgl_r32_r32      
  retq                                            #  7     0x1c  1      OPC=retq               
                                                                                               
.size target, .-target
