  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  mulps %xmm3, %xmm2                        #  1     0     3      OPC=mulps_xmm_xmm         
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x3   5      OPC=callq_label           
  vmovd %r8d, %xmm4                         #  3     0x8   5      OPC=vmovd_xmm_r32         
  vpbroadcastq %xmm4, %xmm1                 #  4     0xd   5      OPC=vpbroadcastq_xmm_xmm  
  vhaddps %ymm1, %ymm4, %ymm1               #  5     0x12  4      OPC=vhaddps_ymm_ymm_ymm   
  retq                                      #  6     0x16  1      OPC=retq                  
                                                                                            
.size target, .-target
