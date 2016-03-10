  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                   #  Line  RIP   Bytes  Opcode                
.target:                 #        0     0      OPC=<label>           
  pmovzxwq %xmm1, %xmm0  #  1     0     5      OPC=pmovzxwq_xmm_xmm  
  xorq %rbx, %rbx        #  2     0x5   3      OPC=xorq_r64_r64      
  movd %xmm0, %r13d      #  3     0x8   5      OPC=movd_r32_xmm      
  rorb $0x1, %bh         #  4     0xd   2      OPC=rorb_rh_one       
  xaddw %bx, %r13w       #  5     0xf   5      OPC=xaddw_r16_r16     
  retq                   #  6     0x14  1      OPC=retq              
                                                                     
.size target, .-target
