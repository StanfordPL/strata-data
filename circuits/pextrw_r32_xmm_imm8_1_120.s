  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                
.target:                     #        0    0      OPC=<label>           
  xorl %ebx, %ebx            #  1     0    2      OPC=xorl_r32_r32      
  vpor %xmm1, %xmm1, %xmm15  #  2     0x2  4      OPC=vpor_xmm_xmm_xmm  
  movq %xmm15, %r13          #  3     0x6  5      OPC=movq_r64_xmm      
  orw %r13w, %bx             #  4     0xb  4      OPC=orw_r16_r16       
  retq                       #  5     0xf  1      OPC=retq              
                                                                        
.size target, .-target
