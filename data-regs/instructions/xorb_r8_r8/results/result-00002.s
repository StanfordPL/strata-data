  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movb %bl, %ch                   #  1     0     2      OPC=movb_rh_r8      
  movq $0xfffffffffffffff8, %rbx  #  2     0x2   10     OPC=movq_r64_imm64  
  xaddw %bx, %cx                  #  3     0xc   4      OPC=xaddw_r16_r16   
  xorb %bh, %bl                   #  4     0x10  2      OPC=xorb_r8_rh      
  retq                            #  5     0x12  1      OPC=retq            
                                                                            
.size target, .-target
