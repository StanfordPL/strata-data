  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_cf_into_rbx  #  1     0     5      OPC=callq_label  
  orl %ebx, %ebx           #  2     0x5   2      OPC=orl_r32_r32  
  notw %bx                 #  3     0x7   3      OPC=notw_r16     
  xorb %bl, %bh            #  4     0xa   2      OPC=xorb_rh_r8   
  callq .read_pf_into_rbx  #  5     0xc   5      OPC=callq_label  
  negw %bx                 #  6     0x11  3      OPC=negw_r16     
  retq                     #  7     0x14  1      OPC=retq         
                                                                  
.size target, .-target
