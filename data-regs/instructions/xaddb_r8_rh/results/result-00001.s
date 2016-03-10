  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movsbw %ah, %bp                  #  1     0     4      OPC=movsbw_r16_rh   
  movzbq %bl, %r8                  #  2     0x4   4      OPC=movzbq_r64_r8   
  movq $0x7, %r9                   #  3     0x8   10     OPC=movq_r64_imm64  
  callq .move_032_064_r8d_r9d_rdx  #  4     0x12  5      OPC=callq_label     
  movb %dl, %ah                    #  5     0x17  2      OPC=movb_rh_r8      
  callq .clear_cf                  #  6     0x19  5      OPC=callq_label     
  adcb %bpl, %bl                   #  7     0x1e  3      OPC=adcb_r8_r8      
  retq                             #  8     0x21  1      OPC=retq            
                                                                             
.size target, .-target
