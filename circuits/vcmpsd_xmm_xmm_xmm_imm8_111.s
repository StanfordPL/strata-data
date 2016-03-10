  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r8_r9    #  1     0     5      OPC=callq_label               
  vzeroall                          #  2     0x5   3      OPC=vzeroall                  
  addl %r9d, %r8d                   #  3     0x8   3      OPC=addl_r32_r32              
  callq .move_064_128_r8_r9_xmm1    #  4     0xb   5      OPC=callq_label               
  divss %xmm14, %xmm2               #  5     0x10  5      OPC=divss_xmm_xmm             
  vsqrtsd %xmm2, %xmm14, %xmm5      #  6     0x15  4      OPC=vsqrtsd_xmm_xmm_xmm       
  vbroadcastss %xmm5, %xmm15        #  7     0x19  5      OPC=vbroadcastss_xmm_xmm      
  cvtpd2dq %xmm15, %xmm0            #  8     0x1e  5      OPC=cvtpd2dq_xmm_xmm          
  vfnmadd231sd %xmm3, %xmm0, %xmm1  #  9     0x23  5      OPC=vfnmadd231sd_xmm_xmm_xmm  
  retq                              #  10    0x28  1      OPC=retq                      
                                                                                        
.size target, .-target
