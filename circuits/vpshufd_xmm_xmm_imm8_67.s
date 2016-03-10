  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label             
  vmovd %r13d, %xmm1                            #  2     0x5   5      OPC=vmovd_xmm_r32           
  vpunpckldq %xmm2, %xmm1, %xmm6                #  3     0xa   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpcklpd %xmm2, %xmm6, %xmm9                 #  4     0xe   4      OPC=vunpcklpd_xmm_xmm_xmm   
  vmovupd %ymm9, %ymm1                          #  5     0x12  5      OPC=vmovupd_ymm_ymm         
  retq                                          #  6     0x17  1      OPC=retq                    
                                                                                                  
.size target, .-target
