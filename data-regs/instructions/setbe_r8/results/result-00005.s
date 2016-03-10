  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label     
  callq .set_of            #  2     0x5   5      OPC=callq_label     
  callq .read_zf_into_rcx  #  3     0xa   5      OPC=callq_label     
  setno %bh                #  4     0xf   3      OPC=setno_rh        
  movswl %cx, %r11d        #  5     0x12  4      OPC=movswl_r32_r16  
  orq %r11, %rbx           #  6     0x16  3      OPC=orq_r64_r64     
  retq                     #  7     0x19  1      OPC=retq            
                                                                     
.size target, .-target
