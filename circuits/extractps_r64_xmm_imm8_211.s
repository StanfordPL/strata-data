  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vmaxpd %xmm1, %xmm1, %xmm2                    #  1     0     4      OPC=vmaxpd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label         
  cvtss2sil %xmm7, %ebx                         #  3     0x9   4      OPC=cvtss2sil_r32_xmm   
  xorl %edi, %edi                               #  4     0xd   2      OPC=xorl_r32_r32        
  setnbe %bl                                    #  5     0xf   3      OPC=setnbe_r8           
  vmovq %xmm7, %rsp                             #  6     0x12  5      OPC=vmovq_r64_xmm       
  xchgq %rbx, %rsp                              #  7     0x17  3      OPC=xchgq_r64_r64       
  retq                                          #  8     0x1a  1      OPC=retq                
                                                                                              
.size target, .-target
