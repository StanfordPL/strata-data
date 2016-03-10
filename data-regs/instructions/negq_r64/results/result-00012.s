  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                           #  Line  RIP   Bytes  Opcode                  
.target:                         #        0     0      OPC=<label>             
  vxorpd %xmm10, %xmm10, %xmm13  #  1     0     5      OPC=vxorpd_xmm_xmm_xmm  
  vmovapd %xmm13, %xmm8          #  2     0x5   5      OPC=vmovapd_xmm_xmm     
  cvttss2sil %xmm8, %esp         #  3     0xa   5      OPC=cvttss2sil_r32_xmm  
  subq %rbx, %rsp                #  4     0xf   3      OPC=subq_r64_r64        
  xchgq %rbx, %rsp               #  5     0x12  3      OPC=xchgq_r64_r64       
  retq                           #  6     0x15  1      OPC=retq                
                                                                               
.size target, .-target
