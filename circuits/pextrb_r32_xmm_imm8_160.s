  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x20, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  rolb $0x1, %bh    #  2     0xa   2      OPC=rolb_rh_one     
  movq %xmm1, %rsp  #  3     0xc   5      OPC=movq_r64_xmm    
  xchgb %bl, %spl   #  4     0x11  3      OPC=xchgb_r8_r8     
  retq              #  5     0x14  1      OPC=retq            
                                                              
.size target, .-target
