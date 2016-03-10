  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffff0, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  setna %dh                       #  2     0xa   3      OPC=setna_rh        
  incl %ebx                       #  3     0xd   2      OPC=incl_r32        
  xchgb %dh, %bl                  #  4     0xf   2      OPC=xchgb_r8_rh     
  retq                            #  5     0x11  1      OPC=retq            
                                                                            
.size target, .-target
