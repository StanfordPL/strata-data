  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                
.target:                            #        0     0      OPC=<label>           
  pmovzxdq %xmm1, %xmm3             #  1     0     5      OPC=pmovzxdq_xmm_xmm  
  movq $0x0, %rbx                   #  2     0x5   10     OPC=movq_r64_imm64    
  xorb %bh, %bl                     #  3     0xf   2      OPC=xorb_r8_rh        
  callq .move_128_064_xmm3_r10_r11  #  4     0x11  5      OPC=callq_label       
  cmovnaq %r10, %rbx                #  5     0x16  4      OPC=cmovnaq_r64_r64   
  retq                              #  6     0x1a  1      OPC=retq              
                                                                                
.size target, .-target
