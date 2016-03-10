  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  pmovzxwd %xmm1, %xmm14                    #  1     0     6      OPC=pmovzxwd_xmm_xmm    
  vpandn %xmm14, %xmm14, %xmm9              #  2     0x6   5      OPC=vpandn_xmm_xmm_xmm  
  vmovss %xmm1, %xmm9, %xmm9                #  3     0xb   4      OPC=vmovss_xmm_xmm_xmm  
  punpckhdq %xmm14, %xmm1                   #  4     0xf   5      OPC=punpckhdq_xmm_xmm   
  minss %xmm9, %xmm9                        #  5     0x14  5      OPC=minss_xmm_xmm       
  vmovmskpd %xmm9, %rbx                     #  6     0x19  5      OPC=vmovmskpd_r64_xmm   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  7     0x1e  5      OPC=callq_label         
  xaddw %r9w, %bx                           #  8     0x23  5      OPC=xaddw_r16_r16       
  retq                                      #  9     0x28  1      OPC=retq                
                                                                                          
.size target, .-target
