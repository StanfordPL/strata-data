  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label       
  vzeroall                                  #  2     0x5   3      OPC=vzeroall          
  vmovd %edx, %xmm12                        #  3     0x8   4      OPC=vmovd_xmm_r32     
  movd %r9d, %xmm13                         #  4     0xc   5      OPC=movd_xmm_r32      
  callq .move_64_128_xmm12_xmm13_xmm3       #  5     0x11  5      OPC=callq_label       
  callq .move_256_128_ymm3_xmm12_xmm13      #  6     0x16  5      OPC=callq_label       
  movsldup %xmm12, %xmm1                    #  7     0x1b  5      OPC=movsldup_xmm_xmm  
  retq                                      #  8     0x20  1      OPC=retq              
                                                                                        
.size target, .-target
