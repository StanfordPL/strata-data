  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                  
.target:                  #        0     0      OPC=<label>             
  vpmovsxwd %xmm1, %xmm7  #  1     0     5      OPC=vpmovsxwd_xmm_xmm   
  vmovd %xmm1, %r12d      #  2     0x5   5      OPC=vmovd_r32_xmm       
  popcntw %r12w, %di      #  3     0xa   6      OPC=popcntw_r16_r16     
  pxor %xmm7, %xmm1       #  4     0x10  4      OPC=pxor_xmm_xmm        
  vcvtsd2sil %xmm1, %ebx  #  5     0x14  4      OPC=vcvtsd2sil_r32_xmm  
  cmovael %r12d, %ebx     #  6     0x18  4      OPC=cmovael_r32_r32     
  retq                    #  7     0x1c  1      OPC=retq                
                                                                        
.size target, .-target
