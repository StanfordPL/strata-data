  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                       #  Line  RIP   Bytes  Opcode                  
.target:                     #        0     0      OPC=<label>             
  vpxor %xmm9, %xmm9, %xmm3  #  1     0     5      OPC=vpxor_xmm_xmm_xmm   
  vcvtsd2sil %xmm3, %ebx     #  2     0x5   4      OPC=vcvtsd2sil_r32_xmm  
  movq %xmm1, %r15           #  3     0x9   5      OPC=movq_r64_xmm        
  xaddw %bx, %r15w           #  4     0xe   5      OPC=xaddw_r16_r16       
  retq                       #  5     0x13  1      OPC=retq                
                                                                           
.size target, .-target
