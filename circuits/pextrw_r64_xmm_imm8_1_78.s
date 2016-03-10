  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                   
.target:                                    #        0     0      OPC=<label>              
  vsqrtss %xmm1, %xmm1, %xmm2               #  1     0     4      OPC=vsqrtss_xmm_xmm_xmm  
  vxorps %ymm10, %ymm10, %ymm3              #  2     0x4   5      OPC=vxorps_ymm_ymm_ymm   
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label          
  movmskpd %xmm3, %ebx                      #  4     0xe   4      OPC=movmskpd_r32_xmm     
  xorw %r9w, %bx                            #  5     0x12  4      OPC=xorw_r16_r16         
  retq                                      #  6     0x16  1      OPC=retq                 
                                                                                           
.size target, .-target
