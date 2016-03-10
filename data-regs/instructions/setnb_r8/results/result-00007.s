  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffff9, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  callq .read_cf_into_rcx         #  2     0xa   5      OPC=callq_label     
  adcb %ch, %bh                   #  3     0xf   2      OPC=adcb_rh_rh      
  callq .read_sf_into_rbx         #  4     0x11  5      OPC=callq_label     
  retq                            #  5     0x16  1      OPC=retq            
                                                                            
.size target, .-target
