  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  callq .read_cf_into_rbx          #  1     0     5      OPC=callq_label     
  setz %bh                         #  2     0x5   3      OPC=setz_rh         
  shlb $0x1, %bl                   #  3     0x8   2      OPC=shlb_r8_one     
  callq .move_064_032_rbx_r8d_r9d  #  4     0xa   5      OPC=callq_label     
  movslq %r8d, %r11                #  5     0xf   3      OPC=movslq_r64_r32  
  addw %r11w, %r8w                 #  6     0x12  4      OPC=addw_r16_r16    
  callq .read_zf_into_rbx          #  7     0x16  5      OPC=callq_label     
  retq                             #  8     0x1b  1      OPC=retq            
                                                                             
.size target, .-target
