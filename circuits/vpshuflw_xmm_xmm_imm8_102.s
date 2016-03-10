  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label         
  vminpd %xmm2, %xmm2, %xmm1                #  2     0x5   4      OPC=vminpd_xmm_xmm_xmm  
  xchgw %ax, %dx                            #  3     0x9   2      OPC=xchgw_r16_ax        
  vmovd %eax, %xmm2                         #  4     0xb   4      OPC=vmovd_xmm_r32       
  movhlps %xmm2, %xmm1                      #  5     0xf   3      OPC=movhlps_xmm_xmm     
  movsldup %xmm2, %xmm3                     #  6     0x12  4      OPC=movsldup_xmm_xmm    
  pxor %xmm3, %xmm1                         #  7     0x16  4      OPC=pxor_xmm_xmm        
  retq                                      #  8     0x1a  1      OPC=retq                
                                                                                          
.size target, .-target
