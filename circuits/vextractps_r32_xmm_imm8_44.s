  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  movq $0x2c, %rbx    #  1     0     10     OPC=movq_r64_imm64  
  movd %xmm1, %r11d   #  2     0xa   5      OPC=movd_r32_xmm    
  callq .set_zf       #  3     0xf   5      OPC=callq_label     
  cmovel %r11d, %ebx  #  4     0x14  4      OPC=cmovel_r32_r32  
  retq                #  5     0x18  1      OPC=retq            
                                                                
.size target, .-target
