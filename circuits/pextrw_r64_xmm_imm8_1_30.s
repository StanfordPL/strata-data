  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label        
  vmovshdup %xmm1, %xmm11                   #  2     0x5   4      OPC=vmovshdup_xmm_xmm  
  vmovmskpd %xmm11, %ebx                    #  3     0x9   5      OPC=vmovmskpd_r32_xmm  
  xchgw %bx, %r9w                           #  4     0xe   4      OPC=xchgw_r16_r16      
  retq                                      #  5     0x12  1      OPC=retq               
                                                                                         
.size target, .-target
