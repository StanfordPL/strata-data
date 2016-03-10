  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0xfffffffffffffffc, %rcx     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_032_016_ecx_r12w_r13w  #  2     0xa   5      OPC=callq_label     
  clc                                #  3     0xf   1      OPC=clc             
  adcb %r13b, %bl                    #  4     0x10  3      OPC=adcb_r8_r8      
  retq                               #  5     0x13  1      OPC=retq            
                                                                               
.size target, .-target
