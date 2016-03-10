  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label        
  vmovd %r9d, %xmm6                         #  2     0x5   5      OPC=vmovd_xmm_r32      
  andnps %xmm2, %xmm6                       #  3     0xa   3      OPC=andnps_xmm_xmm     
  vmovshdup %xmm6, %xmm3                    #  4     0xd   4      OPC=vmovshdup_xmm_xmm  
  movsldup %xmm3, %xmm1                     #  5     0x11  4      OPC=movsldup_xmm_xmm   
  retq                                      #  6     0x15  1      OPC=retq               
                                                                                         
.size target, .-target
