  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  setnb %dh                #  1     0     3      OPC=setnb_rh       
  setae %dl                #  2     0x3   3      OPC=setae_r8       
  callq .clear_zf          #  3     0x6   5      OPC=callq_label    
  callq .read_zf_into_rbx  #  4     0xb   5      OPC=callq_label    
  xaddw %bx, %dx           #  5     0x10  4      OPC=xaddw_r16_r16  
  movb %bl, %ah            #  6     0x14  2      OPC=movb_rh_r8     
  retq                     #  7     0x16  1      OPC=retq           
                                                                    
.size target, .-target
