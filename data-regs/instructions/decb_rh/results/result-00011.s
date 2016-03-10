  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .clear_zf          #  1     0     5      OPC=callq_label    
  callq .read_zf_into_rcx  #  2     0x5   5      OPC=callq_label    
  callq .clear_cf          #  3     0xa   5      OPC=callq_label    
  callq .read_cf_into_rbx  #  4     0xf   5      OPC=callq_label    
  adcb %bh, %bh            #  5     0x14  2      OPC=adcb_rh_rh     
  decq %rcx                #  6     0x16  3      OPC=decq_r64       
  xaddw %cx, %bx           #  7     0x19  4      OPC=xaddw_r16_r16  
  addb %bl, %ah            #  8     0x1d  2      OPC=addb_rh_r8     
  retq                     #  9     0x1f  1      OPC=retq           
                                                                    
.size target, .-target
