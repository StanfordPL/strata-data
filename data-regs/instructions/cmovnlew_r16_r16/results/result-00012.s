  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  xorpd %xmm15, %xmm15     #  1     0     5      OPC=xorpd_xmm_xmm      
  cvtsd2sil %xmm15, %r12d  #  2     0x5   5      OPC=cvtsd2sil_r32_xmm  
  cmovgw %cx, %r12w        #  3     0xa   5      OPC=cmovgw_r16_r16     
  cmovnlel %r12d, %ebx     #  4     0xf   4      OPC=cmovnlel_r32_r32   
  retq                     #  5     0x13  1      OPC=retq               
                                                                        
.size target, .-target
