  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpmovsxwd %xmm1, %xmm2                    #  1     0     5      OPC=vpmovsxwd_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label        
  movmskpd %xmm2, %ebx                      #  3     0xa   4      OPC=movmskpd_r32_xmm   
  xchgw %bx, %dx                            #  4     0xe   3      OPC=xchgw_r16_r16      
  retq                                      #  5     0x11  1      OPC=retq               
                                                                                         
.size target, .-target
