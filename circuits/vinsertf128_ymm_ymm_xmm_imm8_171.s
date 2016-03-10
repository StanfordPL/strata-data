  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label        
  vmovd %eax, %xmm6                         #  2     0x5   4      OPC=vmovd_xmm_r32      
  movupd %xmm2, %xmm12                      #  3     0x9   5      OPC=movupd_xmm_xmm     
  vmovdqu %xmm3, %xmm2                      #  4     0xe   4      OPC=vmovdqu_xmm_xmm    
  vorps %ymm6, %ymm2, %ymm13                #  5     0x12  4      OPC=vorps_ymm_ymm_ymm  
  callq .move_128_256_xmm12_xmm13_ymm1      #  6     0x16  5      OPC=callq_label        
  retq                                      #  7     0x1b  1      OPC=retq               
                                                                                         
.size target, .-target
