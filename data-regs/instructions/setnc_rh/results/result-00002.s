  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .read_cf_into_rbx            #  1     0     5      OPC=callq_label  
  callq .read_cf_into_rcx            #  2     0x5   5      OPC=callq_label  
  adcb %cl, %bl                      #  3     0xa   2      OPC=adcb_r8_r8   
  callq .read_zf_into_rcx            #  4     0xc   5      OPC=callq_label  
  callq .move_032_016_ebx_r12w_r13w  #  5     0x11  5      OPC=callq_label  
  callq .move_016_008_cx_r12b_r13b   #  6     0x16  5      OPC=callq_label  
  callq .move_016_032_r12w_r13w_ecx  #  7     0x1b  5      OPC=callq_label  
  movb %cl, %ah                      #  8     0x20  2      OPC=movb_rh_r8   
  retq                               #  9     0x22  1      OPC=retq         
                                                                            
.size target, .-target
