  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                 
.target:                      #        0     0      OPC=<label>            
  vpxor %xmm7, %xmm7, %xmm13  #  1     0     4      OPC=vpxor_xmm_xmm_xmm  
  cvtss2sil %xmm13, %r11d     #  2     0x4   5      OPC=cvtss2sil_r32_xmm  
  movw %cx, %r11w             #  3     0x9   4      OPC=movw_r16_r16       
  cmoval %r11d, %ebx          #  4     0xd   4      OPC=cmoval_r32_r32     
  retq                        #  5     0x11  1      OPC=retq               
                                                                           
.size target, .-target
