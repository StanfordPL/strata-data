  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label          
  notl %eax                                 #  2     0x5   2      OPC=notl_r32             
  vmovd %eax, %xmm9                         #  3     0x7   4      OPC=vmovd_xmm_r32        
  por %xmm2, %xmm9                          #  4     0xb   5      OPC=por_xmm_xmm          
  vsqrtss %xmm9, %xmm2, %xmm1               #  5     0x10  5      OPC=vsqrtss_xmm_xmm_xmm  
  retq                                      #  6     0x15  1      OPC=retq                 
                                                                                           
.size target, .-target
