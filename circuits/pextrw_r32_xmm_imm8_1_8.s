  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                  #  Line  RIP   Bytes  Opcode               
.target:                #        0     0      OPC=<label>          
  vmovaps %xmm1, %xmm6  #  1     0     4      OPC=vmovaps_xmm_xmm  
  movd %xmm6, %r11d     #  2     0x4   5      OPC=movd_r32_xmm     
  xorl %ebx, %ebx       #  3     0x9   2      OPC=xorl_r32_r32     
  cmovngw %r11w, %bx    #  4     0xb   5      OPC=cmovngw_r16_r16  
  xaddb %bl, %r11b      #  5     0x10  4      OPC=xaddb_r8_r8      
  retq                  #  6     0x14  1      OPC=retq             
                                                                   
.size target, .-target
