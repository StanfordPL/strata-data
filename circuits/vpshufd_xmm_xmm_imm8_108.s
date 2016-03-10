  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label           
  vmovapd %xmm2, %xmm6                      #  2     0x5   4      OPC=vmovapd_xmm_xmm       
  punpckhqdq %xmm6, %xmm6                   #  3     0x9   4      OPC=punpckhqdq_xmm_xmm    
  movd %r8d, %xmm3                          #  4     0xd   5      OPC=movd_xmm_r32          
  vmovss %xmm3, %xmm2, %xmm9                #  5     0x12  4      OPC=vmovss_xmm_xmm_xmm    
  movss %xmm2, %xmm6                        #  6     0x16  4      OPC=movss_xmm_xmm         
  vmovlhps %xmm9, %xmm6, %xmm1              #  7     0x1a  5      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                      #  8     0x1f  1      OPC=retq                  
                                                                                            
.size target, .-target
